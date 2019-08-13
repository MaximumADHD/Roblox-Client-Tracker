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
    vec4 f0 = texture2D(DiffuseMapTexture, vec4(VARYING0, 0.0, -10.0).xy, -10.0);
    float f1 = f0.w;
    gl_FragData[0] = vec4((f0.xyz * f1) * CB1[1].xyz, f1 * CB1[1].w);
}

//$$DiffuseMapTexture=s0
