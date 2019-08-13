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
    float _478 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _522 = (2.0 * (((CB1[2].y / (_478 - CB1[2].x)) * CB1[2].z) + (_478 * CB1[2].w))) - 1.0;
    float _527 = exp(CB1[1].z * _522);
    float _530 = -CB1[1].w;
    float _534 = -exp(_530 * _522);
    float _551 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-5.0, 0.0)) + VARYING0).x) - 1.0;
    float _595 = (2.0 * (((CB1[2].y / (_551 - CB1[2].x)) * CB1[2].z) + (_551 * CB1[2].w))) - 1.0;
    float _600 = exp(CB1[1].z * _595);
    float _607 = -exp(_530 * _595);
    float _624 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float _668 = (2.0 * (((CB1[2].y / (_624 - CB1[2].x)) * CB1[2].z) + (_624 * CB1[2].w))) - 1.0;
    float _673 = exp(CB1[1].z * _668);
    float _680 = -exp(_530 * _668);
    float _697 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _741 = (2.0 * (((CB1[2].y / (_697 - CB1[2].x)) * CB1[2].z) + (_697 * CB1[2].w))) - 1.0;
    float _746 = exp(CB1[1].z * _741);
    float _753 = -exp(_530 * _741);
    float _770 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _814 = (2.0 * (((CB1[2].y / (_770 - CB1[2].x)) * CB1[2].z) + (_770 * CB1[2].w))) - 1.0;
    float _819 = exp(CB1[1].z * _814);
    float _826 = -exp(_530 * _814);
    float _843 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _887 = (2.0 * (((CB1[2].y / (_843 - CB1[2].x)) * CB1[2].z) + (_843 * CB1[2].w))) - 1.0;
    float _892 = exp(CB1[1].z * _887);
    float _899 = -exp(_530 * _887);
    float _916 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _960 = (2.0 * (((CB1[2].y / (_916 - CB1[2].x)) * CB1[2].z) + (_916 * CB1[2].w))) - 1.0;
    float _965 = exp(CB1[1].z * _960);
    float _972 = -exp(_530 * _960);
    float _989 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1033 = (2.0 * (((CB1[2].y / (_989 - CB1[2].x)) * CB1[2].z) + (_989 * CB1[2].w))) - 1.0;
    float _1038 = exp(CB1[1].z * _1033);
    float _1045 = -exp(_530 * _1033);
    float _1062 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _1106 = (2.0 * (((CB1[2].y / (_1062 - CB1[2].x)) * CB1[2].z) + (_1062 * CB1[2].w))) - 1.0;
    float _1111 = exp(CB1[1].z * _1106);
    float _1118 = -exp(_530 * _1106);
    float _1135 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1179 = (2.0 * (((CB1[2].y / (_1135 - CB1[2].x)) * CB1[2].z) + (_1135 * CB1[2].w))) - 1.0;
    float _1184 = exp(CB1[1].z * _1179);
    float _1191 = -exp(_530 * _1179);
    float _1208 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(5.0, 0.0)) + VARYING0).x) - 1.0;
    float _1252 = (2.0 * (((CB1[2].y / (_1208 - CB1[2].x)) * CB1[2].z) + (_1208 * CB1[2].w))) - 1.0;
    float _1257 = exp(CB1[1].z * _1252);
    float _1264 = -exp(_530 * _1252);
    _entryPointOutput = ((((((((((vec4(_527, _527 * _527, _534, _534 * _534) * CB1[3].x) + (vec4(_600, _600 * _600, _607, _607 * _607) * CB1[4].y)) + (vec4(_673, _673 * _673, _680, _680 * _680) * CB1[4].x)) + (vec4(_746, _746 * _746, _753, _753 * _753) * CB1[3].w)) + (vec4(_819, _819 * _819, _826, _826 * _826) * CB1[3].z)) + (vec4(_892, _892 * _892, _899, _899 * _899) * CB1[3].y)) + (vec4(_965, _965 * _965, _972, _972 * _972) * CB1[3].y)) + (vec4(_1038, _1038 * _1038, _1045, _1045 * _1045) * CB1[3].z)) + (vec4(_1111, _1111 * _1111, _1118, _1118 * _1118) * CB1[3].w)) + (vec4(_1184, _1184 * _1184, _1191, _1191 * _1191) * CB1[4].x)) + (vec4(_1257, _1257 * _1257, _1264, _1264 * _1264) * CB1[4].y);
}

//$$Texture0Texture=s0
