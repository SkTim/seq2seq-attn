#lhy
#2016.9

import random

if __name__ == "__main__":
    route = "/data/sls/scratch/belinkov/mt/data/ar-he/TED-WIT3/2016-01-release/ar-he/moses/work-dir"
    src_train = open("%s/corpus/ted.clean.1.ar" % route, 'r').readlines()
    targ_train = open("%s/corpus/ted.clean.1.he" % route, 'r').readlines()
    #src_train = open(r'data/src-train.txt').readlines()
    #targ_train = open(r'data/targ-train.txt').readlines()
    src_handle = open("data/src-train-doubled.txt", 'w')
    targ_handle = open("data/targ-train-doubled.txt", 'w')
    src = map((lambda x : x.strip('\n')), src_train)
    targ = map((lambda x : x.strip('\n')), targ_train)
    corpus1 = map((lambda x, y : [x, y]), src, targ)
    corpus2 = map((lambda x, y: [x, y]), targ, targ)
    corpus1.extend(corpus2)
    random.shuffle(corpus1)
    src = map((lambda x : x[0]), corpus1)
    targ = map((lambda x : x[1]), corpus1)
    src_handle.write('\n'.join(src))
    targ_handle.write('\n'.join(targ))
