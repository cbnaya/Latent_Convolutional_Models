# Latent Convolutional Models


![Sample resotrations using a Latent Convolutional Model.](Sample_Restorations.png)


Latent Convolutional Models work by parametrizing the latent space of a generator using convolutional neural networks. A schematic can be found below


![The Schematic of a Latent Convolutional Model. The smaller ConvNet $f$ (red) is unique to each image is parametrize the latent space of the generator $g_{\theta}$ (magenta) which is common to all images. The input $s$ is fixed to random noise and is not updated during the training process.](NormNet_Paper.png)


## Installation Dependencies
	1. numpy 1.14.3
	2. pytorch 0.4.0
	3. tensorboard-pytorch [GitHub - lanpa/tensorboard-pytorch: tensorboard for pytorch (and chainer, mxnet, numpy, …)](https://github.com/lanpa/tensorboard-pytorch)


