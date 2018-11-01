var nomnoml = require("nomnoml");
var $ = require('jquery');
require('remark/src/remark');
var remark = window.remark;
var terminalLanguage = require('./terminal.language');

var hljs = remark.highlighter.engine;

hljs.registerLanguage('terminal', terminalLanguage);

var slideshow = null;

function initialize(options) {
    slideshow = remark.create({
        sourceUrl: options.sourceUrl,
        //ratio: '16:9',
        ratio: '4:3',
        navigation: {scroll: false},
        highlightStyle: 'monokai',
        highlightLines: true,
        slideNumberFormat: '%current%'
    });
    window.slideshow = slideshow;
    slideshow.on('afterShowSlide', function(slide) {
        if (slide.content.join('\n').includes('```nomnoml')) {
            // Kind of overkill. Should render only the visible ones
            renderNomnoml();
        }
    })
}

function renderNomnoml() {
    $('code.nomnoml').each(function() {
        var settings = [
            '#direction: right',
            '#fill: #ddd',
            '#stroke: #ddd',
            ''
        ].join("\n");

        var source = settings + this.innerText;
        try {
            var svg = $(nomnoml.renderSvg(source));
            svg.addClass('nomnoml');
            svg.attr(
                'viewBox',
                '0 0 ' + svg.attr('width') + ' ' + svg.attr('height')
            );
            $(this).replaceWith(svg);
        } catch(e) {
            console.log(e);
        }
    });
}

window.initialize = initialize;
