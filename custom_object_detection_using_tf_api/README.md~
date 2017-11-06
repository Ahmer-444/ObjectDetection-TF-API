# Installation of TensorFlow Object Detection in Virtual Enviroment

1. Follow the installation instructions on https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md
2. Protobuf Compilation problem
   Error: fix the bug “Expected "required", "optional", or "repeated".

   **Solution** 
   https://github.com/tensorflow/models/issues/1834
   You need to download protoc version 3.3 (already compiled). Used protoc inside bin directory to run this command like this:
	tensorflow$ mkdir protoc_3.3
	tensorflow$ cd protoc_3.3
	tensorflow/protoc_3.3$ wget https://github.com/google/protobuf/releases/download/v3.3.0/protoc-3.3.0-linux-x86_64.zip
	tensorflow/protoc_3.3$ chmod 775 protoc-3.3.0-linux-x86_64.zip
	tensorflow/protoc_3.3$ unzip protoc-3.3.0-linux-x86_64.zip
	tensorflow/protoc_3.3$ cd ../models/
	tensorflow/protoc_3.3$ /home/humayun/tensorflow/protoc_3.3/bin/protoc object_detection/protos/*.proto --python_out=.

	It will work hopefullly.

3. If you want to permanently add python path to virtual enviroment. Edit the vitualenv file: gedit /home/ahmer/.virtualenvs/keras/bin/postactivate
   Add line: 'Replace path with your ones'
   export PYTHONPATH=$PYTHONPATH:/home/ahmer/AHMER/tensorflow-tfleran/tensorflow-models/models/research:/home/ahmer/AHMER/tensorflow-tfleran/tensorflow-models/models/research/slim


https://medium.com/towards-data-science/how-to-train-your-own-object-detector-with-tensorflows-object-detector-api-bec72ecfe1d9

# Custom Object Detection

# Directory Structure
  + annotations					->	.xml files for each image with object coordinates 
  + images					-> 	Original Images
  + data					->	.csv & .record(format used by tensorflow) files
  + ssd_mobilenet_v1_coco_11_06_2017		-> 	SSD  pre-tuned weights and model
    (https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md)
  + training					->	configure your model (.config),Labels (.pbtext) and all checkpoints will be here

# Steps
1. Use LabelImg https://github.com/tzutalin/labelImg for object annotations. Now you will have the a .xml file for each image. 
   Store .xml's to 'annotations'

2. Use xml_to_csv.py script and then generate_tfrecord.py to covert .csv -> .record (tesnorflow format).

3. object detection training pipeline: Configure model paths and labels count based on your enviroment. label your objects in object-detection.pbtxt

4. How to perform training locally.
   https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/running_locally.md

5. Use inference.py for predictions

