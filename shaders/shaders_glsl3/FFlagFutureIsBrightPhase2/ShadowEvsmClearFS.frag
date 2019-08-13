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
out vec4 _entryPointOutput;

void main()
{
    float f0 = exp(CB1[4].x);
    float f1 = -exp(-CB1[4].y);
    _entryPointOutput = vec4(f0, f0 * f0, f1, f1 * f1);
}

