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
    float _526 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _570 = (2.0 * (((CB1[2].y / (_526 - CB1[2].x)) * CB1[2].z) + (_526 * CB1[2].w))) - 1.0;
    float _575 = exp(CB1[1].z * _570);
    float _578 = -CB1[1].w;
    float _582 = -exp(_578 * _570);
    float _599 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-6.0, 0.0)) + VARYING0).x) - 1.0;
    float _643 = (2.0 * (((CB1[2].y / (_599 - CB1[2].x)) * CB1[2].z) + (_599 * CB1[2].w))) - 1.0;
    float _648 = exp(CB1[1].z * _643);
    float _655 = -exp(_578 * _643);
    float _672 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-5.0, 0.0)) + VARYING0).x) - 1.0;
    float _716 = (2.0 * (((CB1[2].y / (_672 - CB1[2].x)) * CB1[2].z) + (_672 * CB1[2].w))) - 1.0;
    float _721 = exp(CB1[1].z * _716);
    float _728 = -exp(_578 * _716);
    float _745 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float _789 = (2.0 * (((CB1[2].y / (_745 - CB1[2].x)) * CB1[2].z) + (_745 * CB1[2].w))) - 1.0;
    float _794 = exp(CB1[1].z * _789);
    float _801 = -exp(_578 * _789);
    float _818 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float _862 = (2.0 * (((CB1[2].y / (_818 - CB1[2].x)) * CB1[2].z) + (_818 * CB1[2].w))) - 1.0;
    float _867 = exp(CB1[1].z * _862);
    float _874 = -exp(_578 * _862);
    float _891 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float _935 = (2.0 * (((CB1[2].y / (_891 - CB1[2].x)) * CB1[2].z) + (_891 * CB1[2].w))) - 1.0;
    float _940 = exp(CB1[1].z * _935);
    float _947 = -exp(_578 * _935);
    float _964 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1008 = (2.0 * (((CB1[2].y / (_964 - CB1[2].x)) * CB1[2].z) + (_964 * CB1[2].w))) - 1.0;
    float _1013 = exp(CB1[1].z * _1008);
    float _1020 = -exp(_578 * _1008);
    float _1037 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float _1081 = (2.0 * (((CB1[2].y / (_1037 - CB1[2].x)) * CB1[2].z) + (_1037 * CB1[2].w))) - 1.0;
    float _1086 = exp(CB1[1].z * _1081);
    float _1093 = -exp(_578 * _1081);
    float _1110 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float _1154 = (2.0 * (((CB1[2].y / (_1110 - CB1[2].x)) * CB1[2].z) + (_1110 * CB1[2].w))) - 1.0;
    float _1159 = exp(CB1[1].z * _1154);
    float _1166 = -exp(_578 * _1154);
    float _1183 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float _1227 = (2.0 * (((CB1[2].y / (_1183 - CB1[2].x)) * CB1[2].z) + (_1183 * CB1[2].w))) - 1.0;
    float _1232 = exp(CB1[1].z * _1227);
    float _1239 = -exp(_578 * _1227);
    float _1256 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float _1300 = (2.0 * (((CB1[2].y / (_1256 - CB1[2].x)) * CB1[2].z) + (_1256 * CB1[2].w))) - 1.0;
    float _1305 = exp(CB1[1].z * _1300);
    float _1312 = -exp(_578 * _1300);
    float _1329 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(5.0, 0.0)) + VARYING0).x) - 1.0;
    float _1373 = (2.0 * (((CB1[2].y / (_1329 - CB1[2].x)) * CB1[2].z) + (_1329 * CB1[2].w))) - 1.0;
    float _1378 = exp(CB1[1].z * _1373);
    float _1385 = -exp(_578 * _1373);
    float _1402 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(6.0, 0.0)) + VARYING0).x) - 1.0;
    float _1446 = (2.0 * (((CB1[2].y / (_1402 - CB1[2].x)) * CB1[2].z) + (_1402 * CB1[2].w))) - 1.0;
    float _1451 = exp(CB1[1].z * _1446);
    float _1458 = -exp(_578 * _1446);
    _entryPointOutput = ((((((((((((vec4(_575, _575 * _575, _582, _582 * _582) * CB1[3].x) + (vec4(_648, _648 * _648, _655, _655 * _655) * CB1[4].z)) + (vec4(_721, _721 * _721, _728, _728 * _728) * CB1[4].y)) + (vec4(_794, _794 * _794, _801, _801 * _801) * CB1[4].x)) + (vec4(_867, _867 * _867, _874, _874 * _874) * CB1[3].w)) + (vec4(_940, _940 * _940, _947, _947 * _947) * CB1[3].z)) + (vec4(_1013, _1013 * _1013, _1020, _1020 * _1020) * CB1[3].y)) + (vec4(_1086, _1086 * _1086, _1093, _1093 * _1093) * CB1[3].y)) + (vec4(_1159, _1159 * _1159, _1166, _1166 * _1166) * CB1[3].z)) + (vec4(_1232, _1232 * _1232, _1239, _1239 * _1239) * CB1[3].w)) + (vec4(_1305, _1305 * _1305, _1312, _1312 * _1312) * CB1[4].x)) + (vec4(_1378, _1378 * _1378, _1385, _1385 * _1385) * CB1[4].y)) + (vec4(_1451, _1451 * _1451, _1458, _1458 * _1458) * CB1[4].z);
}

//$$Texture0Texture=s0
