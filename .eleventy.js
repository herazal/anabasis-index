module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("static");
  return {
    dir: {
      input: ".",
      includes: "includes",
      data: "_data",
      output: "_site"
    }
  };
}
