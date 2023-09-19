python -m venv .venv

source .venv/bin/activate

pip install -r requirements.txt

wget https://huggingface.co/datasets/tiange/Cap3D/resolve/main/blender.zip

unzip blender.zip

touch .env