# Get the first argument passed to the script as parent_dir
parent_dir="$1"

if [ -z "$parent_dir" ]; then
  echo "Usage: ./run.sh <parent_dir>"
  exit 1
fi

# 
python create_object_path.py --parent_dir "$parent_dir"

# Run the Blender command
./blender-3.4.1-linux-x64/blender -b -P render_script.py -- --object_path_pkl "$parent_dir/object_path.pkl" --parent_dir "$parent_dir"

# Run the caption_blip2.py script
python caption_blip2.py --parent_dir "$parent_dir" --model_type 'pretrain_flant5xl'

# Run the caption_clip_gpt.py script
python caption_clip_gpt.py --parent_dir "$parent_dir" --gpt_type 'gpt3.5'