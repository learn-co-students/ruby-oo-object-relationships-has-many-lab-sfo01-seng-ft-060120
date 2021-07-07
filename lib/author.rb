
class Author

    attr_accessor :name , :post

    def initialize(name)
      @name = name
    end

    def add_post(post)
      post.author = self
    end

    def posts
      Post.all.select { |post| add_post(post)}.to_a
    end


    def add_post_by_title(title)
      new_title = Post.new(title)
      add_post(new_title)
    end

    def self.post_count
      Post.all.count
    end
end