{:delegate_to} = howl.util.table

background   = '#455A64'
current      = '#75715e'
selection    = '#00BCD4'
foreground   = '#ECEFF1'
aquamarine   = '#23CAA4'
ming         = '#386969'
comment      = '#747C84'
red          = '#C79595'
darkred      = '#8b0000'
orange       = '#C7AE95'
yellow       = '#C7C795'
-- yellow_dark  = '#75715e'
green        = '#AEC795'
green_dark   = '#95C7AE'
aqua         = '#99ffff'
blue         = '#95AEC7'
purple       = '#AE95C7'
magenta      = '#C795AE'
grey         = '#595959'
grey_dark    = '#3E515A'
grey_darker  = '#384951'
grey_darkest = '#263138'
grey_light   = '#a6a6a6'
embedded_bg  = '#484848'
-- border_color = '#333333'

-- General styling for context boxes (editor, command_line)
content_box = {

  background:
    color: background

  -- border:
  --   width: 0
    -- color: magenta

  -- border_right:
  --   width: 3
  --   color: border_color

  -- border_bottom:
  --   width: 3
  --   color: border_color

  header:
    color: white

    background:
      gradient:
        type: 'linear'
        direction: 'vertical'
        stops: {
          '#263138', grey_dark, grey_dark, grey_dark,
          grey_dark, grey_dark, grey_dark, grey_dark,
          grey_dark, grey_dark, grey_dark
        }
      -- color: grey_dark

    -- border_top:
    --   width: 2
    --   color: '#263138'

    border_bottom:
      width: 1
      color: grey_darker


    padding_left: 15

    color: white
    font: bold: true
    padding: 10

  footer:
    background:
      color: grey_dark

    -- border_top:
    --   color: grey_darker

    color: grey
    font: bold: true
    padding: 3
}

return {
  window:
    outer_padding: 0
    inner_padding: 0

    background:
      color: background

    status:
      font: family: 'Cantarell Regular', bold: true, italic: true
      color: grey

      info: color: foreground
      warning: color: orange
      'error': color: red

  :content_box

  popup:
    background:
      color: grey_darkest
    border:
      color: grey

  editor: delegate_to content_box, {
    indicators:
      default:
        color: grey_light

      title:
        color: foreground
        font: family: 'Cantarell Regular', bold: true

      vi:
        font: bold: true

    caret:
      color: grey_light
      width: 2

    current_line:
      background: current

    -- line numbers
    gutter:
      color: foreground
      background:
        color: grey_darkest
        alpha: 0.6

    border:
      width: 0
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: comment,
      :background,
      line_width: 1

    indentation_guide_1:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    indentation_guide_2:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    indentation_guide_3:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    edge_line:
      type: flair.PIPE,
      foreground: blue,
      foreground_alpha: 0.3,
      line_width: 0.5

    search:
      type: highlight.RECTANGLE
      foreground: black
      foreground_alpha: 1
      background: aquamarine
      text_color: grey_darkest
      height: 'text'

    search_secondary:
      type: flair.RECTANGLE
      background: ming
      text_color: grey_darkest
      height: 'text'

    replace_strikeout:
      type: flair.RECTANGLE
      foreground: black
      background: red
      text_color: black
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: foreground
      background: '#0064b1'
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      foreground: '#0064b1'
      text_color: foreground
      line_width: 1
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: current
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: white
      text_color: white
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: foreground
      width: 2
      height: 'text'

    block_cursor:
      type: flair.RECTANGLE,
      background: foreground
      text_color: background
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.RECTANGLE
      background: selection
      background_alpha: 0.4
      min_width: 'letter'

  styles:
    default:
      color: foreground

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup:
      background: grey_darkest
      color: foreground

    comment:
      font: italic: true
      color: comment

    variable:
      color: yellow

    label:
      color: orange
      font: italic: true

    key:
      color: blue
      font: bold: false -- true

    fdecl:
      color: red
      font: bold: true

    keyword:
      color: magenta
      font: bold: false -- true

    class:
      color: blue
      font: bold: true

    type_def:
      color: green
      font:
        bold: true

    definition:
      color: yellow

    function:
      color: blue
      font: bold: true

    type:
      color: blue
      font: italic: true

    char: color: green
    number: color: purple
    operator: color: green_dark
    preproc: color: aqua
    special: color: purple
    tag: color: purple
    member: color: red
    info: color: blue

    constant:
      color: yellow

    string:
      color: yellow

    regex:
      color: green
      background: embedded_bg

    embedded:
      color: blue
      background: embedded_bg

    -- Markup and visual styles

    error:
      font: italic: true
      color: white
      background: darkred

    warning:
      font: italic: true
      color: orange

    h1:
      font: bold: true
      color: magenta

    h2:
      font: bold: true
      color: aqua

    h3:
      font: italic: true
      color: purple

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: aqua
    link_url: color: comment

    table:
      color: blue
      background: embedded_bg
      underline: true

    addition: color: green
    deletion: color: red
    change: color: yellow
  }
