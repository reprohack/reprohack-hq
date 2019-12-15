library(hexSticker)
library(showtext)

font_add_google("Knewave", "knewave")
showtext_auto()
# The reprohack-graphic1.png was made in adobe illustrator (not currently in repo). The
# original fill colour was #18ba99 but was: 
# a) too dark according to feedback &
# b) out of gamut for CMYK print so corrected
sticker(here::here("assets", "reprohack-graphic1.png"),
        package="ReproHack", p_family = "knewave",
        p_size=7, p_color = "#FFFFFF", p_y = 0.6,
        s_x=1.0, #s_y=0.8, 
        s_width=0.7, s_y = 1.2,
        l_y = 1.05, l_x = 0.9, 
        h_fill="#00cc99", h_color="#10735F", 
        #h_size = 3,
        filename="hex/reprohack.png", spotlight = F, asp = 0.7679814,
        dpi=2700)

# svg output. Not currently working very well as reading in the svg version of the
# artwork is super pixelated
sticker(here::here("assets", "reprohack-graphic.svg"),
        package="ReproHack", p_family = "knewave",
        p_size=7, p_color = "#FFFFFF", p_y = 0.6,
        s_x=1.0, #s_y=0.8, 
        s_width=0.7, s_y = 1.2,
        l_y = 1.05, l_x = 0.9, 
        h_fill="#18ba99", h_color="#10735F", 
        #h_size = 3,
        filename="hex/reprohack.svg", spotlight = F, asp = 0.7679814,
        dpi=2700)

