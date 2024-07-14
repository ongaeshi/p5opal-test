# backtick_javascript: true

# https://tkitao.hatenablog.com/entry/2015/12/19/192523
def method_missing(name, *args)
  %x{
    obj = window[name];
    if (typeof(obj) == 'function') {
      return window[name].apply(window, args);
    } else {
      return window[name];
    }
  }
end

%x{
  window.setup = function() { Opal.top.$setup(); };
  window.draw = function() { Opal.top.$draw(); };
}

module P5
  Vector = %x{p5.Vector}
end