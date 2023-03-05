--[[

Lua script:
(Run in Splash at localhost:8050)

The following script will retrieve the link at the bottom of the Frontier homepage
advertising of a credit card.

--]]

function main(splash, args)
  assert(splash:go(args.url))
  
  while not splash:select('article#js-sticky-cta') do
    splash:wait(0.1)
    print('waiting...')
  end
  
  text = splash:select('article#js-sticky-cta a.sticky-cta__link'):getAttribute('href')
  print(text)
  return {text}
  
end
