#! /bin/sh
#SBATCH --time=5-0
#SBATCH --gres=gpu:rtx2080:1
#SBATCH --mem=8G
#SBATCH -c8
#SBATCH --array=1-5%5
#SBATCH --output="slurm-logs/slurm-%A_%a.out"

source /etc/profile.d/lmod.sh
module load cuda/10.0
module load cudnn
cd /cs/snapless/raananf/cbnaya/lcm/Latent_Convolutional_Models/
source .venv/bin/activate

cd src

echo "========================================"
hostname
export COMMANDS_FILE=$1

awk NR==$SLURM_ARRAY_TASK_ID $COMMANDS_FILE
echo
awk NR==$SLURM_ARRAY_TASK_ID $COMMANDS_FILE | bash
