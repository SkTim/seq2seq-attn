#lhy
#2016.9

import random

if __name__ == "__main__":
    src_train = open(r'data/src-train.txt').readlines()
    targ_train = open(r'data/targ-train.txt').readlines()
    src_handle = open("data/src-train-mixed.txt", 'w')
    targ_handle = open("data/targ-train-mixed.txt", 'w')
    src = map((lambda x : x.strip('\n')), src_train)
    targ = map((lambda x : x.strip('\n')), targ_train)
    corpus1 = map((lambda x, y : [x, y]), src, targ)
    corpus2 = map((lambda x, y: [x, y]), targ, src)
    corpus1.extend(corpus2)
    random.shuffle(corpus1)
    src = map((lambda x : x[0]), corpus1)
    targ = map((lambda x : x[1]), corpus1)
    src_handle.write('\n'.join(src))
    targ_handle.write('\n'.join(targ))
