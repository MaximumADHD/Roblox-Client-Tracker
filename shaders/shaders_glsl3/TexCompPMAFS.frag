#version 150

struct Params
{
    vec4 OffsetAndScale;
    vec4 Color;
};

uniform vec4 CB1[2];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, vec4(VARYING0, 0.0, -10.0).xy, -10.0);
    float f1 = f0.w;
    _entryPointOutput = vec4((f0.xyz * f1) * CB1[1].xyz, f1 * CB1[1].w);
}

//$$DiffuseMapTexture=s0
