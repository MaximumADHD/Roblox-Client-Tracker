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
    float _574 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _618 = (2.0 * (((CB1[2].y / (_574 - CB1[2].x)) * CB1[2].z) + (_574 * CB1[2].w))) - 1.0;
    float _623 = exp(CB1[1].z * _618);
    float _626 = -CB1[1].w;
    float _630 = -exp(_626 * _618);
    float _647 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-7.0, 0.0)) + VARYING0).x) - 1.0;
    float _691 = (2.0 * (((CB1[2].y / (_647 - CB1[2].x)) * CB1[2].z) + (_647 * CB1[2].w))) - 1.0;
    float _696 = exp(CB1[1].z * _691);
    float _703 = -exp(_626 * _691);
    float _720 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-6.0, 0.0)) + VARYING0).x) - 1.0;
    float _764 = (2.0 * (((CB1[2].y / (_720 - CB1[2].x)) * CB1[2].z) + (_720 * CB1[2].w))) - 1.0;
    float _769 = exp(CB1[1].z * _764);
    float _776 = -exp(_626 * _764);
    float _793 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-5.0, 0.0)) + VARYING0).x) - 1.0;
    float _837 = (2.0 * (((CB1[2].y / (_793 - CB1[2].x)) * CB1[2].z) + (_793 * CB1[2].w))) - 1.0;
    float _842 = exp(CB1[1].z * _837);
    float _849 = -exp(_626 * _837);
    float _866 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float _910 = (2.0 * (((CB1[2].y / (_866 - CB1[2].x)) * CB1[2].z) + (_866 * CB1[2].w))) - 1.0;
    float _915 = exp(CB1[1].z * _910);
    float _922 = -exp(_626 * _910);
    float _939 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _983 = (2.0 * (((CB1[2].y / (_939 - CB1[2].x)) * CB1[2].z) + (_939 * CB1[2].w))) - 1.0;
    float _988 = exp(CB1[1].z * _983);
    float _995 = -exp(_626 * _983);
    float _1012 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1056 = (2.0 * (((CB1[2].y / (_1012 - CB1[2].x)) * CB1[2].z) + (_1012 * CB1[2].w))) - 1.0;
    float _1061 = exp(CB1[1].z * _1056);
    float _1068 = -exp(_626 * _1056);
    float _1085 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1129 = (2.0 * (((CB1[2].y / (_1085 - CB1[2].x)) * CB1[2].z) + (_1085 * CB1[2].w))) - 1.0;
    float _1134 = exp(CB1[1].z * _1129);
    float _1141 = -exp(_626 * _1129);
    float _1158 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1202 = (2.0 * (((CB1[2].y / (_1158 - CB1[2].x)) * CB1[2].z) + (_1158 * CB1[2].w))) - 1.0;
    float _1207 = exp(CB1[1].z * _1202);
    float _1214 = -exp(_626 * _1202);
    float _1231 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1275 = (2.0 * (((CB1[2].y / (_1231 - CB1[2].x)) * CB1[2].z) + (_1231 * CB1[2].w))) - 1.0;
    float _1280 = exp(CB1[1].z * _1275);
    float _1287 = -exp(_626 * _1275);
    float _1304 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _1348 = (2.0 * (((CB1[2].y / (_1304 - CB1[2].x)) * CB1[2].z) + (_1304 * CB1[2].w))) - 1.0;
    float _1353 = exp(CB1[1].z * _1348);
    float _1360 = -exp(_626 * _1348);
    float _1377 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1421 = (2.0 * (((CB1[2].y / (_1377 - CB1[2].x)) * CB1[2].z) + (_1377 * CB1[2].w))) - 1.0;
    float _1426 = exp(CB1[1].z * _1421);
    float _1433 = -exp(_626 * _1421);
    float _1450 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(5.0, 0.0)) + VARYING0).x) - 1.0;
    float _1494 = (2.0 * (((CB1[2].y / (_1450 - CB1[2].x)) * CB1[2].z) + (_1450 * CB1[2].w))) - 1.0;
    float _1499 = exp(CB1[1].z * _1494);
    float _1506 = -exp(_626 * _1494);
    float _1523 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(6.0, 0.0)) + VARYING0).x) - 1.0;
    float _1567 = (2.0 * (((CB1[2].y / (_1523 - CB1[2].x)) * CB1[2].z) + (_1523 * CB1[2].w))) - 1.0;
    float _1572 = exp(CB1[1].z * _1567);
    float _1579 = -exp(_626 * _1567);
    float _1596 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(7.0, 0.0)) + VARYING0).x) - 1.0;
    float _1640 = (2.0 * (((CB1[2].y / (_1596 - CB1[2].x)) * CB1[2].z) + (_1596 * CB1[2].w))) - 1.0;
    float _1645 = exp(CB1[1].z * _1640);
    float _1652 = -exp(_626 * _1640);
    _entryPointOutput = ((((((((((((((vec4(_623, _623 * _623, _630, _630 * _630) * CB1[3].x) + (vec4(_696, _696 * _696, _703, _703 * _703) * CB1[4].w)) + (vec4(_769, _769 * _769, _776, _776 * _776) * CB1[4].z)) + (vec4(_842, _842 * _842, _849, _849 * _849) * CB1[4].y)) + (vec4(_915, _915 * _915, _922, _922 * _922) * CB1[4].x)) + (vec4(_988, _988 * _988, _995, _995 * _995) * CB1[3].w)) + (vec4(_1061, _1061 * _1061, _1068, _1068 * _1068) * CB1[3].z)) + (vec4(_1134, _1134 * _1134, _1141, _1141 * _1141) * CB1[3].y)) + (vec4(_1207, _1207 * _1207, _1214, _1214 * _1214) * CB1[3].y)) + (vec4(_1280, _1280 * _1280, _1287, _1287 * _1287) * CB1[3].z)) + (vec4(_1353, _1353 * _1353, _1360, _1360 * _1360) * CB1[3].w)) + (vec4(_1426, _1426 * _1426, _1433, _1433 * _1433) * CB1[4].x)) + (vec4(_1499, _1499 * _1499, _1506, _1506 * _1506) * CB1[4].y)) + (vec4(_1572, _1572 * _1572, _1579, _1579 * _1579) * CB1[4].z)) + (vec4(_1645, _1645 * _1645, _1652, _1652 * _1652) * CB1[4].w);
}

//$$Texture0Texture=s0
