var gulp = require('gulp');
var del = require('del');

var src_root = ['./*.{asax,aspx,Master}', './*.config', '!./*.*.config'];
var src_css = './css/*.css';
var src_img = './images/*.{bmp,gif,png,jpg}';
var src_js = ['./*.js', './js/Components/*.js', '!js/Components/*Copy.js', './js/Components/**/*.{js,html}'];
var dest_dir = './git/ng1AspNet';

gulp.task('default', ['dist_js', 'dist_dotnet']);

gulp.task('dist_dotnet', ['dist_root']);

gulp.task('dist_root', function () {
  gulp.src(src_root).pipe(gulp.dest(dest_dir));
});

gulp.task('dist_js', function () {
  gulp.src(src_js).pipe(gulp.dest(dest_dir + '/js'));
});

gulp.task('clean', function () {
  return del(dest_dir+'/**/*');
});
