#version 110

uniform vec4 CB13[16];
void main()
{
    gl_FragData[0] = vec4(CB13[0].x, 0.0, 0.0, 1.0);
}

