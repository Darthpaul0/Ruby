require 'test/unit'
require 'tmpdir'

# remember, this class must be a child of the Test::Unit::TestCase class
class TC1_Addition < Test::Unit::TestCase
  def test_case1_file_is_File_class
    @f = File.new(@tempfile, "w+")
    @f.puts "...write to temporary file"
    @f.close
    assert_instance_of(File, @f, "Error: #{@f} not of the File class!")
  end
  def test_case2_file_purged_from_filesystem
    @f = File.new(@tempfile, "w+")
    @f.puts "...write to temporary file"
    @f.close
    File.delete(@tempfile)
    assert_false(File.exist?(@tempfile), "Error: #{@tempfile} not purged!")
  end
  def setup
    namepart = Random.new.rand(100..999).to_s + ".tmp"
    @tempfile = File.join(Dir.tmpdir, namepart)
  end
  def teardown
    File.delete(@tempfile) if File.exist?(@tempfile)
  end
end
