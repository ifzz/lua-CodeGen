return require'CodeGen'{
    class = [[
public class ${_name} {
    ${_attrs/decl()}

    ${_attrs/getter_setter(); separator='\n'}
}
]],
    decl = [[
private ${_type} ${_name};
]],
    getter_setter = [[
public void set${_name; format=firstuc}(${_type} ${_name}) {
    this.${_name} = ${_name};
}
public ${_type} get${_name; format=firstuc}() {
    return this.${_name};
}
]],
    firstuc = function (s)
        return s:sub(1, 1):upper() .. s:sub(2)
    end,
}
