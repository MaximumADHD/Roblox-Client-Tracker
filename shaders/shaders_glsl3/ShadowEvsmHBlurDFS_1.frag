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
    float _230 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _274 = (2.0 * (((CB1[2].y / (_230 - CB1[2].x)) * CB1[2].z) + (_230 * CB1[2].w))) - 1.0;
    float _279 = exp(CB1[1].z * _274);
    float _286 = -exp((-CB1[1].w) * _274);
    _entryPointOutput = vec4(_279, _279 * _279, _286, _286 * _286);
}

//$$Texture0Texture=s0
