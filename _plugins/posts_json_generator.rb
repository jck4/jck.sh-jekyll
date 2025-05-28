module Jekyll
  class PostsJsonGenerator < Generator
    def generate(site)
      posts = site.posts.docs.map do |post|
        {
          id: post.basename_without_ext,
          title: post.data['title'],
          date: post.data['date'].iso8601,
          category: post.data['category'],
          tags: post.data['tags'] || [],
          excerpt: post.data['excerpt'] || post.excerpt.to_s.strip,
          url: post.url
        }
      end

      # Create the posts directory if it doesn't exist
      FileUtils.mkdir_p('_site/blog/posts')

      # Write the JSON file
      File.write('_site/blog/posts.json', JSON.pretty_generate(posts))

      # Copy individual post HTML files
      site.posts.docs.each do |post|
        content = post.content
        File.write("_site/blog/posts/#{post.basename_without_ext}.html", content)
      end
    end
  end
end 