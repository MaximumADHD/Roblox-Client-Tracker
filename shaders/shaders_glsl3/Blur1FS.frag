#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = (2.0 * CB1[1].z) * CB1[1].z;
    float f1 = exp((-4.0) / f0);
    float f2 = exp((-1.0) / f0) + f1;
    vec2 f3 = CB1[1].xy * (1.0 + (f1 / f2));
    _entryPointOutput = (texture(Texture0Texture, VARYING0) + ((texture(Texture0Texture, VARYING0 + f3) + texture(Texture0Texture, VARYING0 - f3)) * f2)) / vec4(1.0 + (2.0 * f2));
}

//$$Texture0Texture=s0
