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
    float _286 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _330 = (2.0 * (((CB1[2].y / (_286 - CB1[2].x)) * CB1[2].z) + (_286 * CB1[2].w))) - 1.0;
    float _335 = exp(CB1[1].z * _330);
    float _338 = -CB1[1].w;
    float _342 = -exp(_338 * _330);
    float _359 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _403 = (2.0 * (((CB1[2].y / (_359 - CB1[2].x)) * CB1[2].z) + (_359 * CB1[2].w))) - 1.0;
    float _408 = exp(CB1[1].z * _403);
    float _415 = -exp(_338 * _403);
    float _432 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _476 = (2.0 * (((CB1[2].y / (_432 - CB1[2].x)) * CB1[2].z) + (_432 * CB1[2].w))) - 1.0;
    float _481 = exp(CB1[1].z * _476);
    float _488 = -exp(_338 * _476);
    _entryPointOutput = ((vec4(_335, _335 * _335, _342, _342 * _342) * CB1[3].x) + (vec4(_408, _408 * _408, _415, _415 * _415) * CB1[3].y)) + (vec4(_481, _481 * _481, _488, _488 * _488) * CB1[3].y);
}

//$$Texture0Texture=s0
