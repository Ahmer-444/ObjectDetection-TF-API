python export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path raccoon_training/ssd_mobilenet_v1_raccoon.config \
    --trained_checkpoint_prefix raccoon_training/model.ckpt-1967 \
    --output_directory racoon_inference_graph
