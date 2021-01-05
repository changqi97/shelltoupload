
with open('../DX_dir/READ_THYM_1/READ_THYM_1_1.txt','r') as f:
    lines = f.readlines()
    #print(lines)
    for index,line in enumerate(lines,1):
        print(line)
        print(line.split('\t'))