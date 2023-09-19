import os
import argparse
import pickle

parser = argparse.ArgumentParser()
parser.add_argument('--parent_dir', type = str, required = True)
args = parser.parse_args()

parent_dir = args.parent_dir
glbs_paths_list = os.listdir(parent_dir + "/glbs")

for i, glb_path in enumerate(glbs_paths_list):
    new_path = os.path.join(".", parent_dir, "glbs", glb_path)
    glbs_paths_list[i] = new_path 
    
with open(f'{parent_dir}/object_path.pkl', 'wb') as f:
    pickle.dump(glbs_paths_list, f)