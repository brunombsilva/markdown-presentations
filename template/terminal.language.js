hljs.registerLanguage('terminal', function() {
  return {
    //subLanguage: 'bash',
    contains: [
      {
        className: 'prompt',
        begin: '^([\\w.]+)@([\\w.]+)',
        end: '\\$ '
      },
      {
        className: 'dquote',
        begin: '^dquote>',
        contains: [
          {
            begin: ' ',
            end: '$',
            className: 'string'
          }
        ]
      },
      {
        className: 'string',
        begin: '"',
        illegal: '"',
        end: '\\n|"'
      },
      {
        className: 'commit-hash',
        begin: '(^| |\\.)(?=.{0,7}[0-9])[a-z0-9]{7}( |\\.)'
      },
      {
        className: 'comment',
        begin: '#',
        end: '\\n'
      },
      {
        className: 'constant',
        begin: ' (.*) \\$ '
      },
      {
        className: 'ansi',
        begin: '<span style\\="([^"]+)">',
        end: '<\\/span>'
      },
      {
        className: 'keyword',
        begin: '^(error:)'
      },
      {
        className: 'keyword',
        begin: '^(pick|reword|edit|squash|fixup|exec|p|r|e|s|f|x|d)\\b'
      },
      {
        className: 'keyword',
        begin: '@@',
        end: '@@'
      },
      {
        className: 'meta',
        begin: '^(Stage this hunk|---|\\+\\+\\+)',
        end: '$'
      },
      {
        className: 'deletion',
        begin: '^-',
        end: '$'
      },
      {
        className: 'addition',
        begin: '^\\+',
        end: '$'
      }
    ]
  }
});
