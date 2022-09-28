#version 110

uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    gl_FragData[0] = VARYING1 * texture2D(DiffuseMapTexture, VARYING0);
}

//$$DiffuseMapTexture=s0
