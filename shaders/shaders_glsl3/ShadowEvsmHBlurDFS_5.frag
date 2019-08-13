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
    float _333 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _377 = (2.0 * (((CB1[2].y / (_333 - CB1[2].x)) * CB1[2].z) + (_333 * CB1[2].w))) - 1.0;
    float _382 = exp(CB1[1].z * _377);
    float _385 = -CB1[1].w;
    float _389 = -exp(_385 * _377);
    float _406 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _450 = (2.0 * (((CB1[2].y / (_406 - CB1[2].x)) * CB1[2].z) + (_406 * CB1[2].w))) - 1.0;
    float _455 = exp(CB1[1].z * _450);
    float _462 = -exp(_385 * _450);
    float _479 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _523 = (2.0 * (((CB1[2].y / (_479 - CB1[2].x)) * CB1[2].z) + (_479 * CB1[2].w))) - 1.0;
    float _528 = exp(CB1[1].z * _523);
    float _535 = -exp(_385 * _523);
    float _552 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _596 = (2.0 * (((CB1[2].y / (_552 - CB1[2].x)) * CB1[2].z) + (_552 * CB1[2].w))) - 1.0;
    float _601 = exp(CB1[1].z * _596);
    float _608 = -exp(_385 * _596);
    float _625 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _669 = (2.0 * (((CB1[2].y / (_625 - CB1[2].x)) * CB1[2].z) + (_625 * CB1[2].w))) - 1.0;
    float _674 = exp(CB1[1].z * _669);
    float _681 = -exp(_385 * _669);
    _entryPointOutput = ((((vec4(_382, _382 * _382, _389, _389 * _389) * CB1[3].x) + (vec4(_455, _455 * _455, _462, _462 * _462) * CB1[3].z)) + (vec4(_528, _528 * _528, _535, _535 * _535) * CB1[3].y)) + (vec4(_601, _601 * _601, _608, _608 * _608) * CB1[3].y)) + (vec4(_674, _674 * _674, _681, _681 * _681) * CB1[3].z);
}

//$$Texture0Texture=s0
