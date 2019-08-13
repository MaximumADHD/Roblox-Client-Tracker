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
    float _381 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _425 = (2.0 * (((CB1[2].y / (_381 - CB1[2].x)) * CB1[2].z) + (_381 * CB1[2].w))) - 1.0;
    float _430 = exp(CB1[1].z * _425);
    float _433 = -CB1[1].w;
    float _437 = -exp(_433 * _425);
    float _454 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _498 = (2.0 * (((CB1[2].y / (_454 - CB1[2].x)) * CB1[2].z) + (_454 * CB1[2].w))) - 1.0;
    float _503 = exp(CB1[1].z * _498);
    float _510 = -exp(_433 * _498);
    float _527 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _571 = (2.0 * (((CB1[2].y / (_527 - CB1[2].x)) * CB1[2].z) + (_527 * CB1[2].w))) - 1.0;
    float _576 = exp(CB1[1].z * _571);
    float _583 = -exp(_433 * _571);
    float _600 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _644 = (2.0 * (((CB1[2].y / (_600 - CB1[2].x)) * CB1[2].z) + (_600 * CB1[2].w))) - 1.0;
    float _649 = exp(CB1[1].z * _644);
    float _656 = -exp(_433 * _644);
    float _673 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _717 = (2.0 * (((CB1[2].y / (_673 - CB1[2].x)) * CB1[2].z) + (_673 * CB1[2].w))) - 1.0;
    float _722 = exp(CB1[1].z * _717);
    float _729 = -exp(_433 * _717);
    float _746 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _790 = (2.0 * (((CB1[2].y / (_746 - CB1[2].x)) * CB1[2].z) + (_746 * CB1[2].w))) - 1.0;
    float _795 = exp(CB1[1].z * _790);
    float _802 = -exp(_433 * _790);
    float _819 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _863 = (2.0 * (((CB1[2].y / (_819 - CB1[2].x)) * CB1[2].z) + (_819 * CB1[2].w))) - 1.0;
    float _868 = exp(CB1[1].z * _863);
    float _875 = -exp(_433 * _863);
    _entryPointOutput = ((((((vec4(_430, _430 * _430, _437, _437 * _437) * CB1[3].x) + (vec4(_503, _503 * _503, _510, _510 * _510) * CB1[3].w)) + (vec4(_576, _576 * _576, _583, _583 * _583) * CB1[3].z)) + (vec4(_649, _649 * _649, _656, _656 * _656) * CB1[3].y)) + (vec4(_722, _722 * _722, _729, _729 * _729) * CB1[3].y)) + (vec4(_795, _795 * _795, _802, _802 * _802) * CB1[3].z)) + (vec4(_868, _868 * _868, _875, _875 * _875) * CB1[3].w);
}

//$$Texture0Texture=s0
