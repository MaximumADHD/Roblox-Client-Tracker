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
    float _623 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _667 = (2.0 * (((CB1[2].y / (_623 - CB1[2].x)) * CB1[2].z) + (_623 * CB1[2].w))) - 1.0;
    float _672 = exp(CB1[1].z * _667);
    float _675 = -CB1[1].w;
    float _679 = -exp(_675 * _667);
    float _696 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-8.0, 0.0)) + VARYING0).x) - 1.0;
    float _740 = (2.0 * (((CB1[2].y / (_696 - CB1[2].x)) * CB1[2].z) + (_696 * CB1[2].w))) - 1.0;
    float _745 = exp(CB1[1].z * _740);
    float _752 = -exp(_675 * _740);
    float _769 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-7.0, 0.0)) + VARYING0).x) - 1.0;
    float _813 = (2.0 * (((CB1[2].y / (_769 - CB1[2].x)) * CB1[2].z) + (_769 * CB1[2].w))) - 1.0;
    float _818 = exp(CB1[1].z * _813);
    float _825 = -exp(_675 * _813);
    float _842 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-6.0, 0.0)) + VARYING0).x) - 1.0;
    float _886 = (2.0 * (((CB1[2].y / (_842 - CB1[2].x)) * CB1[2].z) + (_842 * CB1[2].w))) - 1.0;
    float _891 = exp(CB1[1].z * _886);
    float _898 = -exp(_675 * _886);
    float _915 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-5.0, 0.0)) + VARYING0).x) - 1.0;
    float _959 = (2.0 * (((CB1[2].y / (_915 - CB1[2].x)) * CB1[2].z) + (_915 * CB1[2].w))) - 1.0;
    float _964 = exp(CB1[1].z * _959);
    float _971 = -exp(_675 * _959);
    float _988 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1032 = (2.0 * (((CB1[2].y / (_988 - CB1[2].x)) * CB1[2].z) + (_988 * CB1[2].w))) - 1.0;
    float _1037 = exp(CB1[1].z * _1032);
    float _1044 = -exp(_675 * _1032);
    float _1061 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _1105 = (2.0 * (((CB1[2].y / (_1061 - CB1[2].x)) * CB1[2].z) + (_1061 * CB1[2].w))) - 1.0;
    float _1110 = exp(CB1[1].z * _1105);
    float _1117 = -exp(_675 * _1105);
    float _1134 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1178 = (2.0 * (((CB1[2].y / (_1134 - CB1[2].x)) * CB1[2].z) + (_1134 * CB1[2].w))) - 1.0;
    float _1183 = exp(CB1[1].z * _1178);
    float _1190 = -exp(_675 * _1178);
    float _1207 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1251 = (2.0 * (((CB1[2].y / (_1207 - CB1[2].x)) * CB1[2].z) + (_1207 * CB1[2].w))) - 1.0;
    float _1256 = exp(CB1[1].z * _1251);
    float _1263 = -exp(_675 * _1251);
    float _1280 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1324 = (2.0 * (((CB1[2].y / (_1280 - CB1[2].x)) * CB1[2].z) + (_1280 * CB1[2].w))) - 1.0;
    float _1329 = exp(CB1[1].z * _1324);
    float _1336 = -exp(_675 * _1324);
    float _1353 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1397 = (2.0 * (((CB1[2].y / (_1353 - CB1[2].x)) * CB1[2].z) + (_1353 * CB1[2].w))) - 1.0;
    float _1402 = exp(CB1[1].z * _1397);
    float _1409 = -exp(_675 * _1397);
    float _1426 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _1470 = (2.0 * (((CB1[2].y / (_1426 - CB1[2].x)) * CB1[2].z) + (_1426 * CB1[2].w))) - 1.0;
    float _1475 = exp(CB1[1].z * _1470);
    float _1482 = -exp(_675 * _1470);
    float _1499 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1543 = (2.0 * (((CB1[2].y / (_1499 - CB1[2].x)) * CB1[2].z) + (_1499 * CB1[2].w))) - 1.0;
    float _1548 = exp(CB1[1].z * _1543);
    float _1555 = -exp(_675 * _1543);
    float _1572 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(5.0, 0.0)) + VARYING0).x) - 1.0;
    float _1616 = (2.0 * (((CB1[2].y / (_1572 - CB1[2].x)) * CB1[2].z) + (_1572 * CB1[2].w))) - 1.0;
    float _1621 = exp(CB1[1].z * _1616);
    float _1628 = -exp(_675 * _1616);
    float _1645 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(6.0, 0.0)) + VARYING0).x) - 1.0;
    float _1689 = (2.0 * (((CB1[2].y / (_1645 - CB1[2].x)) * CB1[2].z) + (_1645 * CB1[2].w))) - 1.0;
    float _1694 = exp(CB1[1].z * _1689);
    float _1701 = -exp(_675 * _1689);
    float _1718 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(7.0, 0.0)) + VARYING0).x) - 1.0;
    float _1762 = (2.0 * (((CB1[2].y / (_1718 - CB1[2].x)) * CB1[2].z) + (_1718 * CB1[2].w))) - 1.0;
    float _1767 = exp(CB1[1].z * _1762);
    float _1774 = -exp(_675 * _1762);
    float _1791 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(8.0, 0.0)) + VARYING0).x) - 1.0;
    float _1835 = (2.0 * (((CB1[2].y / (_1791 - CB1[2].x)) * CB1[2].z) + (_1791 * CB1[2].w))) - 1.0;
    float _1840 = exp(CB1[1].z * _1835);
    float _1847 = -exp(_675 * _1835);
    _entryPointOutput = ((((((((((((((((vec4(_672, _672 * _672, _679, _679 * _679) * CB1[3].x) + (vec4(_745, _745 * _745, _752, _752 * _752) * CB1[5].x)) + (vec4(_818, _818 * _818, _825, _825 * _825) * CB1[4].w)) + (vec4(_891, _891 * _891, _898, _898 * _898) * CB1[4].z)) + (vec4(_964, _964 * _964, _971, _971 * _971) * CB1[4].y)) + (vec4(_1037, _1037 * _1037, _1044, _1044 * _1044) * CB1[4].x)) + (vec4(_1110, _1110 * _1110, _1117, _1117 * _1117) * CB1[3].w)) + (vec4(_1183, _1183 * _1183, _1190, _1190 * _1190) * CB1[3].z)) + (vec4(_1256, _1256 * _1256, _1263, _1263 * _1263) * CB1[3].y)) + (vec4(_1329, _1329 * _1329, _1336, _1336 * _1336) * CB1[3].y)) + (vec4(_1402, _1402 * _1402, _1409, _1409 * _1409) * CB1[3].z)) + (vec4(_1475, _1475 * _1475, _1482, _1482 * _1482) * CB1[3].w)) + (vec4(_1548, _1548 * _1548, _1555, _1555 * _1555) * CB1[4].x)) + (vec4(_1621, _1621 * _1621, _1628, _1628 * _1628) * CB1[4].y)) + (vec4(_1694, _1694 * _1694, _1701, _1701 * _1701) * CB1[4].z)) + (vec4(_1767, _1767 * _1767, _1774, _1774 * _1774) * CB1[4].w)) + (vec4(_1840, _1840 * _1840, _1847, _1847 * _1847) * CB1[5].x);
}

//$$Texture0Texture=s0
