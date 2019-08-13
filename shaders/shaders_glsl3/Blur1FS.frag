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
    float f0 = 1.0 / ((2.0 * CB1[1].z) * CB1[1].z);
    float f1 = float((2 * 0) + 1);
    float f2 = exp((((-1.0) - f1) * (f1 + 1.0)) * f0);
    float f3 = exp(((-f1) * f1) * f0) + f2;
    vec2 f4 = CB1[1].xy * (f1 + (f2 / f3));
    _entryPointOutput = (texture(Texture0Texture, VARYING0) + ((texture(Texture0Texture, VARYING0 + f4) + texture(Texture0Texture, VARYING0 - f4)) * f3)) / vec4(1.0 + (2.0 * f3));
}

//$$Texture0Texture=s0
