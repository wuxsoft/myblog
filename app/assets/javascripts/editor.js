window.initEditor = function() {
  var ele, $preview, editor, mobileToolbar, toolbar;
  ele = $('.attach_editor');
  Simditor.locale = 'zh-CN';
  toolbar = ['title', 'bold', 'italic', 'underline', 'strikethrough', 'color', '|', 'ol', 'ul', 'blockquote', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'];
  mobileToolbar = ["bold", "underline", "strikethrough", "color", "ul", "ol"];
  ele.each(function(index, element) {
    editor = new Simditor({
      textarea: element,
      placeholder: '这里输入文字...',
      toolbar: toolbar,
      pasteImage: true,
      defaultImage: 'assets/images/image.png',
      upload: location.search === '?upload' ? {
        url: '/upload'
      } : false
    });
    $preview = $('#preview');
    if ($preview.length > 0) {
      return editor.on('valuechanged', function(e) {
        return $preview.html(editor.getValue());
      });
    }
  });
};
