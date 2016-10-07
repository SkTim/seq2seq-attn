#lhy
#2016.9

ar_he_route="/data/sls/scratch/belinkov/mt/data/ar-he/TED-WIT3/2016-01-release/ar-he/moses/work-dir"

#python preprocess.py --srcvocabfile data/demo.src.dict --targetvocabfile data/demo.src.dict --srcfile data/src-train-mixed.txt --targetfile data/targ-train-mixed.txt --srcvalfile data/src-val.txt --targetvalfile data/targ-val.txt --outputfile data/demo
#python preprocess.py --srcfile data/src-train.txt --targetfile data/targ-train.txt --srcvalfile data/src-val.txt --targetvalfile data/targ-val.txt --outputfile data/demo
python preprocess.py --srcfile data/src-train-doubled.txt --targetfile data/targ-train-doubled.txt --srcvalfile data/src-val-doubled.txt --targetvalfile data/targ-val-doubled.txt --outputfile data/double-st
#python preprocess.py --srcvocabfile data/same-st.src.dict --targetvocabfile data/same-st.src.dict --srcfile data/src-train.txt --targetfile data/src-train.txt --srcvalfile data/src-val.txt --targetvalfile data/src-val.txt --outputfile data/same-st
#python preprocess.py --srcfile data/src-train-mixed.txt --targetfile data/targ-train-mixed.txt --srcvalfile $ar_he_route/tuning/input.tok.1 --targetvalfile $ar_he_route/tuning/reference.tok.1 --outputfile data/demo
#python preprocess.py --srcfile $ar_he_route/corpus/ted.clean.1.ar --targetfile $ar_he_route/corpus/ted.clean.1.he --srcvalfile $ar_he_route/tuning/input.tok.1 --targetvalfile $ar_he_route/tuning/reference.tok.1 --outputfile data/demo
#python preprocess.py --srcvocabfile data/demo.src.dict --targetvocabfile data/demo.src.dict --srcfile data/src-train-mixed.txt --targetfile data/targ-train-mixed.txt --srcvalfile $ar_he_route/tuning/input.tok.1 --targetvalfile $ar_he_route/tuning/reference.tok.1 --outputfile data/demo
