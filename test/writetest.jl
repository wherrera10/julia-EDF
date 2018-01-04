using EDFPlus
using Base.Test


edfh = loadfile("EDFPlusTestFile.edf")
sz = size(edfh.EDFsignals)
@test sz == (20010,601)

ann = Annotation(61.04, "", "NotedThis")
addannotation(edfh, ann.onset, ann.duration, ann.annotation)


newedfh = writefile(edfh, "NEWedfplustestfile.edf")
@test size(newedfh.EDFsignals) == sz


true
