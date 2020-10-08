# Food Identifier

A lot of times, we come across new dishes and wonder what kind of food that is. Well, this app will be there to help you up in real time. Just point your camera towards the food and it will tell what kind of food it is instantly. And yeah, this app works offline.

### Here's the video demonstration
<p align="center">
  <a href="https://youtu.be/T66tSbLFoqM"><img src="https://img.youtube.com/vi/T66tSbLFoqM/0.jpg" alt="WhatFoodIsIT video prototype."></a>
</p>

### Inspiration
A lot of times, we come across new dishes and wonder what kind of food that is. Well, this app will be there to help you up. Just point your camera towards the food and it will tell what kind of food it is instantly. And yeah, this app works offline.

### What it Does
It has a model trained to recognize food categories and uses your phone's camera to recognize the food that your camera is seeing by passing the frames through the model.

### Technologies Used
- Dart
- Flutter
- Keras
- Python
- Tensorflow Lite

## The Model
This Food Classification model with 11-classes uses Python with Tensorflow framework. I trained my own Convolutional Neural Network using Transfer Learning from the very famous [InceptionResnetV2](https://keras.io/api/applications/inceptionresnetv2/) using the ["Food-11" dataset from Kaggle](https://www.kaggle.com/trolukovich/food11-image-dataset).

After training the model I converted it to [Tensorflow Lite](https://www.tensorflow.org/lite) which made it easier for deploying on a mobile device.
### To go through the process
1. Download the mentioned dataset
2. Uncomment everything
3. Go to [this](https://github.com/Triparna-Ganguly/Food-Classifier) repository and train the model by using 
```bash
python claasifier.py
```
4. Now go to the [same](https://github.com/Triparna-Ganguly/Food-Classifier) repository and test the model using 
```bash
python assess.py
```

The conversion to TFLite takes place within the *claasifier.py* file mentioned above.


## Flutter app to identify food types.

To build, just use
```bash
flutter pub get
flutter run
```
in the root directory of this project.

### To be updated

* Adding support for more categories, like even identifying what food it is
* Making a better UI (this current one is just a barebone)
* Optimizing performance
* Probably even add an option to get a recipe to make that food.

### Here's a link to our devpost
[Check it out](https://devpost.com/software/whatfoodisit)!!
