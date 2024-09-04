#version 110

uniform vec4 CB13[1];
void main()
{
    gl_FragData[0] = vec4(CB13[0].x, CB13[0].x, CB13[0].x, 1.0);
}

