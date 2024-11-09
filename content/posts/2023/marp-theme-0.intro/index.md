---
draft: false
title: "Unleashing HTML & CSS Creativity: Exploring the New Theme for Marp"
date: 2023-02-15T13:14:40Z
cover:
    image: "featured.excalidraw.png"
    alt: "Marp Theme"
    caption: "Marp Minimal Turquoise Theme"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---
{{< badge text="Marp" icon="images" href= "https://marp.app/" >}}

{{< badge text="VSCode Plugin" icon="vscode" href= "https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode" >}}

{{< badge text="Obsidian Plugin" icon="tools" href= "https://github.com/samuele-cozzi/obsidian-marp-slides" >}}

---

In the dynamic world of presentations, Marp has been a game-changer for those seeking simplicity, flexibility, and elegance in their slideshows. As Marp enthusiasts eagerly embrace its user-friendly features, a new theme has emerged, promising to take presentations to a whole new level. I have develop this marp theme trying to approach with minimal design but implementing all the basics slide template.

## Features

### The New Theme: A Visual Delight

Marp has always been known for its clean and minimalist design, but the new theme takes it up a notch. The visual aesthetics of this theme are a true delight, combining modern design principles with a touch of sophistication. The color palette is vibrant yet professional, ensuring that your content stands out without overwhelming your audience.

### Seamless Integration with Marp Features

The new theme seamlessly integrates with Marp's existing features, enhancing the overall user experience. Whether you're incorporating code snippets, mathematical equations, or interactive charts, the theme ensures that your content is not only visually appealing but also effectively communicates your message. This synergy between design and functionality sets the stage for compelling presentations.

## Code

This new Marp theme seamlessly integrates the sleek and sophisticated aesthetics of Gaia, enhancing the visual appeal of presentations. The inheritance from Gaia brings not only a refined look but also a focus on optimal readability and a balanced composition. With this new theme, Marp users can elevate their presentations.

### css

```css
/* @theme minimal-turquoise */

@import "gaia";

/* 
Usage:
- slides: <!-- _class: 'xxx yyy' -->
- fitting: <!-- fit -->

Classes:
- First slide: 'lead' 
- First slide of a section: 'divider'
- Boxes: 'box-flex box-bg'
- text: big, small, extrasmall, center
*/

/* COLOR CONFIGURATION */
:root {
    --color-background: #fff;
    --color-foreground: #455054;
    --color-highlight: #E69D45;
    --color-background-stripe: #D4CFC9;
    --color-dimmed: #308695;
}


section {
    padding: 0;
}

p,li {
    font-size: 0.8em;
}

header {
    color: var(--color-background);
    padding-top:0;
    margin-top: -10px !important;
}

footer {
    border-left: 2px solid;
    /* border-image: linear-gradient(to right, #000 50%, transparent 50%) 100% 1; */
    padding: 0px 20px;
    margin: 10px 20px 10px 60px;
    height: 40px;
    font-size: 50%;
    border-image: linear-gradient(to bottom, rgba(0,0,0,0) 33%,var(--color-dimmed) 33%,var(--color-dimmed) 100%,rgba(0,0,0,0) 75%);
    border-image-slice: 1;
}

section::after {
    left: 0;
    height: 60px;
    font-size: 50%;
    color: var(--color-dimmed);
} 

h1, h2 {
    background-color: var(--color-dimmed);
    color: var(--color-background);
    left: 0;
    right: 0;
    margin: 0;
    padding: 25px 25px 15px 25px;
}

blockquote {
    width: 60%;
    text-align: center;
    align-self: center;
    padding: 66px;
    border-radius: 30px;
    background-color: var(--color-background-stripe, transparent);
}

blockquote::before,blockquote::after {
    margin: 10px;
}

table {
    width: calc(100% - 80px);;
}

h3,
h4,
h5,
h6,
p, strong,
li,ul,ol,
blockquote,
table, 
code, marp-pre {
  margin-left: 40px !important;
  margin-right: 40px !important;
}



section.box-flex > ul{
    margin: 0 !important;
    height: 80%;
    padding: 0;
    list-style-type: none;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    align-items:stretch;
    align-content: stretch;
}

section.box-flex > ul > li{
    margin: 10px !important;
    border-radius: 5px;
    padding: 0.5em;
    flex: 1 1 0;
}

section.box-bg > ul >li {
    background-color: var(--color-background-stripe,transparent);
}

section.divider {
    justify-content: center;
    display: flex;
    flex-flow: column nowrap;
    align-items: stretch;
}

section.lead h2 {
    background-color: var(--color-background);
    color: var(--color-foreground);
}

section.divider h2 {
    width: 45%;
}

section.small p,section.big li {
    font-size: 1em;
}

section.small p,section.small li {
    font-size: 0.6em;
}

section.extrasmall p, section.extrasmall li {
    font-size: 0.4em;
}

section.center p, section.center > ul > li {
    text-align: center;
}

```

### How to use

To harness the power of the new Marp theme that inherits from Gaia while keeping simplicity at the forefront, users can make the most of a minimal set of classes to structure their presentations effectively.

- **"lead"** for First Slide: Begin your presentation with impact by using the "lead" class on the first slide. Inherited from Gaia, this class brings a bold and engaging design, setting the tone for what follows. This slide serves as the introduction, capturing your audience's attention right from the start.
- **"divider"** for Section Titles: As you progress through your presentation, employ the "divider" class for section titles. This class ensures a clear visual separation, making it easy for your audience to identify and follow different segments of your talk. The minimalist design inherited from Gaia keeps the focus on content while providing a structured and organized feel to your presentation.
- **"box-flex, box-bg"** for Responsive Columns: To enhance the layout and structure of your slides, utilize the "box-*" classes to create responsive columns. Whether you need a two-column layout, three-column layout, or more, use bg-flex. This is particularly useful when presenting information in a clear and digestible manner, allowing for a visually pleasing and responsive design that adapts to various screen sizes.
- **"big, small, extrasmall, center"** for text modification: Tailor the text on your slides with precision using the "big," "small," "extrasmall," and "center" classes.  The "big" class is perfect for making impactful statements, while "small" and "extrasmall" are useful for fine-tuning the size of supporting text. The "center" class ensures that your text is perfectly aligned, adding a touch of professionalism to your slides. This granular control over text elements contributes to a polished and visually appealing presentation, keeping your audience engaged and focused on your message.

### Source code

### Customization at Your Fingertips

One of the key strengths of Marp has been its customization options, and the new theme builds on this foundation. Users can now easily tailor the appearance of their slides to match their unique style and branding. From choosing fonts to selecting color schemes, the level of customization is unparalleled, giving presenters the freedom to express their creativity seamlessly.

You can customize root color variables of the theme with your preferred palette:

```css

:root {
    --color-background: #fff;
    --color-foreground: #455054;
    --color-highlight: #E69D45;
    --color-background-stripe: #D4CFC9;
    --color-dimmed: #308695;
}

```

## Unlocking the Potential of Your Ideas

Ultimately, the new theme for Marp is not just about aesthetics; it's about unlocking the potential of your ideas. Whether you're a designer, educator, or business professional, this theme empowers you to convey your message with impact. The fusion of visual appeal, customization, and functionality creates an environment where your creativity can truly shine.

## References

- [Marp](https://marp.app/)
- [VSCode Plugin](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)
- [Obsidian Plugin](https://github.com/samuele-cozzi/obsidian-marp-slides)
