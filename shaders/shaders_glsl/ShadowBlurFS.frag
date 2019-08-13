#version 110

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
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    float _153 = float(-3);
    float _159 = exp(((-_153) * _153) * 0.22222222387790679931640625);
    vec4 _167 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _153));
    int _182 = (-3) + 1;
    float _224 = float(_182);
    float _228 = exp(((-_224) * _224) * 0.22222222387790679931640625);
    vec4 _232 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _224));
    int _239 = _182 + 1;
    float _247 = float(_239);
    float _251 = exp(((-_247) * _247) * 0.22222222387790679931640625);
    vec4 _255 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _247));
    int _262 = _239 + 1;
    float _270 = float(_262);
    float _274 = exp(((-_270) * _270) * 0.22222222387790679931640625);
    vec4 _278 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _270));
    int _285 = _262 + 1;
    float _293 = float(_285);
    float _297 = exp(((-_293) * _293) * 0.22222222387790679931640625);
    vec4 _301 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _293));
    int _308 = _285 + 1;
    float _316 = float(_308);
    float _320 = exp(((-_316) * _316) * 0.22222222387790679931640625);
    vec4 _324 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _316));
    float _339 = float(_308 + 1);
    float _343 = exp(((-_339) * _339) * 0.22222222387790679931640625);
    vec4 _347 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * _339));
    gl_FragData[0] = vec4(min(min(min(min(min(min(min(1.0, _167.x), _232.x), _255.x), _278.x), _301.x), _324.x), _347.x), ((((((((0.0 + (_167.y * _159)) + (_232.y * _228)) + (_255.y * _251)) + (_278.y * _274)) + (_301.y * _297)) + (_324.y * _320)) + (_347.y * _343)) * texture2D(Texture1Texture, VARYING0).x) * (1.0 / (((((((0.0 + _159) + _228) + _251) + _274) + _297) + _320) + _343)), 0.0, 0.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
