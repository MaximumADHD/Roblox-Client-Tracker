#version 110

uniform vec4 CB13[16];
void main()
{
    gl_FragData[0] = CB13[0];
}

