project('flags', 'c')

nasm = find_program('nasm')

nasm_gen = generator(nasm,
    output : '@BASENAME@.o',
    arguments : ['-felf64', '@INPUT@', '-o', '@OUTPUT@']
)

nasm_o = nasm_gen.process(['src/flags.s'])

executable('flags', 
    [
        'src/driver.c', nasm_o,
    ]
)
