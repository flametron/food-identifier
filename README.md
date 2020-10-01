# food_identifier

A lot of times, we come across new dishes and wonder what kind of food that is. Well, this app will be there to help you up in real time. Just point your camera towards the food and it will tell what kind of food it is instantly. And yeah, this app works offline.
[**Here's a demo**](https://www.youtube.com/watch?v=T66tSbLFoqM&feature=youtu.be)


## The Model
This Food Classification model with 11-classes uses Python with Tensorflow framework. I trained my own Convolutional Neural Network using Transfer Learning from the very famous [InceptionResnetV2](https://keras.io/api/applications/inceptionresnetv2/) using the ["Food-11" dataset from Kaggle](https://www.kaggle.com/trolukovich/food11-image-dataset).

After training the model I converted it to [Tensorflow Lite](https://www.tensorflow.org/lite) which made it easier for deploying on a mobile device.
### To go through the process
1. download the mentioned dataset
2. uncomment everything
3. go to [this](https://github.com/Triparna-Ganguly/Food-Classifier) repository and train the model by using `python claasifier.py`
4. now go to the [same](https://github.com/Triparna-Ganguly/Food-Classifier) repository and test the model using `python assess.py`

The conversion to TFLite takes place within the *claasifier.py* file mentioned above.


## Flutter app to identify food types.

to build, just use
`flutter pub get` followed by `flutter run` in the root directory of this project

### Here's a link to our devpost
[check](https://devpost.com/software/whatfoodisit) it out!!
