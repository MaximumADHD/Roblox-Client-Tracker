#version 110

struct Params
{
    vec4 OffsetAndScale;
    vec4 Color;
};

uniform vec4 CB1[2];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = texture2D(DiffuseMapTexture, vec4(VARYING0, 0.0, -10.0).xy, -10.0) * CB1[1];
}

//$$DiffuseMapTexture=s0
