This are the steps for getting captions for glbs:
1. Use blender to get 8 views of each of your glbs
2. Use BLIP2 to get 5 captions for each view of a model
3. Use CLIP to get the best caption for each view of a model
4. Use GPT-3.5 to unify the best captions into a single caption

Run the following commands on a new lambda instance:
```
chmod +x install.sh
chmod +x run.sh
./install.sh
```
Once the instalation is complete, run the following command for each group of glbs that you want to get captions from.
The glbs should be on a directory called 'glbs'. The 'glbs' directory should be inside a parent directory containing the name of the glbs collection, like: '/Cap3D/3d_assets/glbs'

You must specify the parent directory where your 'glbs' directory is located
```
./run.sh <parent_directory>
```

The captions should be on a .csv file inside '<parent_directory>/Cap3D_captions/'