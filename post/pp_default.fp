varying highp vec4 var_position;
varying mediump vec2 var_texcoord0;
uniform lowp sampler2D pp_screen;

void main()
{
    vec4 tex = texture2D(pp_screen, var_texcoord0.xy);
    float tone = (tex.r+0.04+tex.g*tex.b*0.3);
    tex.rgb = vec3(tone);

    gl_FragColor = vec4(tex.r,tex.g,tex.b,1.0);
}

