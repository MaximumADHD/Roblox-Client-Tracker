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
    float _221 = 1.0 / ((2.0 * CB1[1].z) * CB1[1].z);
    float _236 = float((2 * 0) + 1);
    float _252 = exp((((-1.0) - _236) * (_236 + 1.0)) * _221);
    float _255 = exp(((-_236) * _236) * _221) + _252;
    vec2 _265 = CB1[1].xy * (_236 + (_252 / _255));
    _entryPointOutput = (texture(Texture0Texture, VARYING0) + ((texture(Texture0Texture, VARYING0 + _265) + texture(Texture0Texture, VARYING0 - _265)) * _255)) / vec4(1.0 + (2.0 * _255));
}

//$$Texture0Texture=s0
