#lhy
#2016.9

th evaluate.lua -model models/demo-model_final.t7 -src_file data/src-val.txt -output_file pred.txt -src_dict data/demo.src.dict -targ_dict data/demo.targ.dict
perl multi-bleu.perl gold.txt < pred.txt
