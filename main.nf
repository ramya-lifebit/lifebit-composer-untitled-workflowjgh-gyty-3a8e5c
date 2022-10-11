nextflow.enable.dsl=2

include { test_python_1 } from './modules/test_python_1/module.nf'
include { test_r_1 } from './modules/test_r_1/module.nf'

workflow {
input1 = Channel.fromPath(params.test_python_1.accessions).splitCsv()
input2 = Channel.fromPath(params.test_r_1.accessions).splitCsv()
test_python_1(input1)
test_r_1(input2)
}
