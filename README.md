# Copyright Andrei Rusanescu

1. Anomaly detection
2. Kernel Regression
3. Text generation

1. Anomaly detection

The objective of the task is to identify the outliers 
in a Training Dataset. The outliers are extreme values
that do not correspond with the mean values of a set.

With a view to finding the outliers, multivariate normal
distribution needs to be computed. Firstly a mean vector
is calculated. In the training set, the column vectors
are displayed on rows. Then, the variances matrix, analog
for deviation in simple normal distribution, is calculated.

In order to find the optimal threshold for all the outliers
in the dataset, the probability density function of the
multivariate gaussian distribution must be computed.

The best epsilon is found when the F1 parameter is the
maximum value found for the predictions vector, which is
either 1, if the probability is lower than epsilon, or 0
if not.

Using the best epsilon, all the outliers are found as
the probabilities that are below this value.


2. Kernel regression

Real life phenomena, usually, are not linear. So, in order
to predict certain events, the data needs to be linearised,
using a cost function, to have the smallest possible errors
between the real values and the values assumed.

To achieve the minimum possible errors, the minimum value for
the cost function needs to be found. This can be done using
the conjugate gradient in iterative methods, equivalent for
the derivative of a function, or cholesky decomposition and
then solving an upper triangular system of equations. The present
implementation of the lower inverse uses Gauss - Jordan.

To get the best prediction a kernel function is needed (linear,
polynomial or gaussian) and a vector a, used in the dot product
between a and K(x(i), :). The dataset used is split in 2 sides,
one for testing, the other for training, using vectorization.
The sides are chosen using the first x % lines for training, and
the rest for testing (x is a given parameter).


3. Text generation

This task's purpose is to simulate what chat GPT does on a very
low level of understanding and scale. Largely, the method proposed
is using Markov chains and a Stochastic matrix for the probability
of a word appearing after a sequence of k words. In order to have a
good accuracy, context needs to be provided, but too much context
makes the model appear unnatural. Too little context makes the model
unpredictable, so balance is needed when choosing the k factor.

For a feature (sequences) there is a crresponding label. For every
feature and label there is an associated index. All the features and
labels are filtered with the aim of creating two dictionaries
containing indexes of each label / feature, using containers.Map.

Iterating through each feature, using the filtered sets of features,
labels and the find function, the row and column are found. Based on
these coordinates, the value in the stochastic matrix is incremented.
