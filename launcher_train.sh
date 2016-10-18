#lhy
#2016.9

th raw_train.lua -data_file data/demo-train.hdf5 -val_data_file data/demo-val.hdf5 -savefile models/demo-model
#th train_onlinegrad.lua -epochs 6 -train_from raw_code/models/demo-model_epoch7.00_30.97.t7\
#	-data_file raw_code/data/demo-train.hdf5 -val_data_file raw_code/data/demo-val.hdf5 -savefile models/BDT-1-FROM7
#th train.lua -data_file data/double-st-train.hdf5 -val_data_file data/double-st-val.hdf5 -savefile models/double-st-model
