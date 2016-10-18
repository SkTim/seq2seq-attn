#lhy
#2016.9

ar_he_route="/data/sls/scratch/belinkov/mt/data/ar-he/TED-WIT3/2016-01-release/ar-he/moses/work-dir"

#th evaluate.lua -model models/double-st-model_final.t7 -src_file data/src-test.txt -output_file pred.txt -src_dict data/double-st.src.dict -targ_dict data/double-st.targ.dict
th evaluate.lua -model models/demo-model_final.t7 -src_file $ar_he_route/evaluation/test.input.tok.1 -output_file pred.txt -src_dict data/demo.src.dict -targ_dict data/demo.src.dict
#perl multi-bleu.perl data/targ-test.txt < pred.txt
perl multi-bleu.perl $ar_he_route/evaluation/test.reference.tok.1 < pred.txt
