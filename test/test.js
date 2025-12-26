const fs = require('fs');
const path = require('path');

describe('Simple Webpage', () => {
  test('index.html file exists', () => {
    expect(fs.existsSync(path.join(__dirname, '../index.html'))).toBe(true);
  });

  test('index.html contains expected content', () => {
    const htmlContent = fs.readFileSync(path.join(__dirname, '../index.html'), 'utf8');
    expect(htmlContent).toContain('<title>我的简单页面</title>');
    expect(htmlContent).toContain('欢迎来到我的简单页面');
    expect(htmlContent).toContain('这是一个最简单的HTML页面');
  });

  test('HTML file has proper structure', () => {
    const htmlContent = fs.readFileSync(path.join(__dirname, '../index.html'), 'utf8');
    expect(htmlContent).toContain('<!DOCTYPE html>');
    expect(htmlContent).toContain('<html');
    expect(htmlContent).toContain('</html>');
    expect(htmlContent).toContain('<head>');
    expect(htmlContent).toContain('</head>');
    expect(htmlContent).toContain('<body>');
    expect(htmlContent).toContain('</body>');
  });
});