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
    float _430 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _474 = (2.0 * (((CB1[2].y / (_430 - CB1[2].x)) * CB1[2].z) + (_430 * CB1[2].w))) - 1.0;
    float _479 = exp(CB1[1].z * _474);
    float _482 = -CB1[1].w;
    float _486 = -exp(_482 * _474);
    float _503 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float _547 = (2.0 * (((CB1[2].y / (_503 - CB1[2].x)) * CB1[2].z) + (_503 * CB1[2].w))) - 1.0;
    float _552 = exp(CB1[1].z * _547);
    float _559 = -exp(_482 * _547);
    float _576 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _620 = (2.0 * (((CB1[2].y / (_576 - CB1[2].x)) * CB1[2].z) + (_576 * CB1[2].w))) - 1.0;
    float _625 = exp(CB1[1].z * _620);
    float _632 = -exp(_482 * _620);
    float _649 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _693 = (2.0 * (((CB1[2].y / (_649 - CB1[2].x)) * CB1[2].z) + (_649 * CB1[2].w))) - 1.0;
    float _698 = exp(CB1[1].z * _693);
    float _705 = -exp(_482 * _693);
    float _722 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _766 = (2.0 * (((CB1[2].y / (_722 - CB1[2].x)) * CB1[2].z) + (_722 * CB1[2].w))) - 1.0;
    float _771 = exp(CB1[1].z * _766);
    float _778 = -exp(_482 * _766);
    float _795 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _839 = (2.0 * (((CB1[2].y / (_795 - CB1[2].x)) * CB1[2].z) + (_795 * CB1[2].w))) - 1.0;
    float _844 = exp(CB1[1].z * _839);
    float _851 = -exp(_482 * _839);
    float _868 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _912 = (2.0 * (((CB1[2].y / (_868 - CB1[2].x)) * CB1[2].z) + (_868 * CB1[2].w))) - 1.0;
    float _917 = exp(CB1[1].z * _912);
    float _924 = -exp(_482 * _912);
    float _941 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _985 = (2.0 * (((CB1[2].y / (_941 - CB1[2].x)) * CB1[2].z) + (_941 * CB1[2].w))) - 1.0;
    float _990 = exp(CB1[1].z * _985);
    float _997 = -exp(_482 * _985);
    float _1014 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1058 = (2.0 * (((CB1[2].y / (_1014 - CB1[2].x)) * CB1[2].z) + (_1014 * CB1[2].w))) - 1.0;
    float _1063 = exp(CB1[1].z * _1058);
    float _1070 = -exp(_482 * _1058);
    _entryPointOutput = ((((((((vec4(_479, _479 * _479, _486, _486 * _486) * CB1[3].x) + (vec4(_552, _552 * _552, _559, _559 * _559) * CB1[4].x)) + (vec4(_625, _625 * _625, _632, _632 * _632) * CB1[3].w)) + (vec4(_698, _698 * _698, _705, _705 * _705) * CB1[3].z)) + (vec4(_771, _771 * _771, _778, _778 * _778) * CB1[3].y)) + (vec4(_844, _844 * _844, _851, _851 * _851) * CB1[3].y)) + (vec4(_917, _917 * _917, _924, _924 * _924) * CB1[3].z)) + (vec4(_990, _990 * _990, _997, _997 * _997) * CB1[3].w)) + (vec4(_1063, _1063 * _1063, _1070, _1070 * _1070) * CB1[4].x);
}

//$$Texture0Texture=s0
