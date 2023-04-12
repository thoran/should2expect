#!/usr/bin/env ruby
# should2expect_spec.rb

load File.expand_path(File.join('..', '..', 'bin', 'should2expect'), __FILE__)
require 'fileutils'
require 'rspec'

describe "should2expect" do
  describe RspecFile do

    subject(:rspec_filename){'test_rspec_file.rb'}

    before do
      File.write(rspec_filename, contents_before)
    end

    context "expectations with nothing to do" do
      context "expect(obj1).to eq(obj2)" do
        let(:contents_before){'expect(obj1).to eq(obj2)'}
        let(:contents_after){'expect(obj1).to eq(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).not_to eq(obj2)" do
        let(:contents_before){'expect(obj1).not_to eq(obj2)'}
        let(:contents_after){'expect(obj1).not_to eq(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to eql(obj2)" do
        let(:contents_before){'expect(obj1).to eql(obj2)'}
        let(:contents_after){'expect(obj1).to eql(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).not_to eql(obj2)" do
        let(:contents_before){'expect(obj1).not_to eql(obj2)'}
        let(:contents_after){'expect(obj1).not_to eql(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to equal(obj2)" do
        let(:contents_before){'expect(obj1).to equal(obj2)'}
        let(:contents_after){'expect(obj1).to equal(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).not_to equal(obj2)" do
        let(:contents_before){'expect(obj1).not_to equal(obj2)'}
        let(:contents_after){'expect(obj1).not_to equal(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to match(obj2)" do
        let(:contents_before){'expect(obj1).to match(obj2)'}
        let(:contents_after){'expect(obj1).to match(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).not_to match(obj2)" do
        let(:contents_before){'expect(obj1).not_to match(obj2)'}
        let(:contents_after){'expect(obj1).not_to match(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to be_nil" do
        let(:contents_before){'expect(obj1).to be_nil'}
        let(:contents_after){'expect(obj1).to be_nil'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to receive(:method1)" do
        let(:contents_before){'expect(obj1).to receive(:method1)'}
        let(:contents_after){'expect(obj1).to receive(:method1)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect(obj1).to receive(:method1).and_return(obj2)" do
        let(:contents_before){'expect(obj1).to receive(:method1).and_return(obj2)'}
        let(:contents_after){'expect(obj1).to receive(:method1).and_return(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "expect_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)" do
        let(:contents_before){'expect_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'expect_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "allow(obj1).to receive(:method1)" do
        let(:contents_before){'allow(obj1).to receive(:method1)'}
        let(:contents_after){'allow(obj1).to receive(:method1)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "allow_any_instance_of(obj1).to receive(:method1)" do
        let(:contents_before){'allow_any_instance_of(obj1).to receive(:method1)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "allow_any_instance_of(obj1).to receive(:method1).with(obj2)" do
        let(:contents_before){'allow_any_instance_of(obj1).to receive(:method1).with(obj2)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1).with(obj2)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "allow_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)" do
        let(:contents_before){'allow_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "does 'nothing'" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with ==" do
      context "obj1.should == obj2" do
        let(:contents_before){'obj1.should == obj2'}
        let(:contents_after){'expect(obj1).to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should==obj2" do
        let(:contents_before){'obj1.should==obj2'}
        let(:contents_after){'expect(obj1).to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not == obj2" do
        let(:contents_before){'obj1.should_not == obj2'}
        let(:contents_after){'expect(obj1).not_to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not==obj2" do
        let(:contents_before){'obj1.should_not==obj2'}
        let(:contents_after){'expect(obj1).not_to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with eq" do
      context "obj1.should eq(obj2)" do
        let(:contents_before){'obj1.should eq(obj2)'}
        let(:contents_after){'expect(obj1).to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not eq(obj2)" do
        let(:contents_before){'obj1.should_not eq(obj2)'}
        let(:contents_after){'expect(obj1).not_to eq(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with eql" do
      context "obj1.should eql(obj2)" do
        let(:contents_before){'obj1.should eql(obj2)'}
        let(:contents_after){'expect(obj1).to eql(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not eql(obj2)" do
        let(:contents_before){'obj1.should_not eql(obj2)'}
        let(:contents_after){'expect(obj1).not_to eql(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with equal" do
      context "obj1.should equal(obj2)" do
        let(:contents_before){'obj1.should equal(obj2)'}
        let(:contents_after){'expect(obj1).to equal(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not equal(obj2)" do
        let(:contents_before){'obj1.should_not equal(obj2)'}
        let(:contents_after){'expect(obj1).not_to equal(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with =~" do
      context "obj1.should =~ obj2" do
        let(:contents_before){'obj1.should =~ obj2'}
        let(:contents_after){'expect(obj1).to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should=~obj2" do
        let(:contents_before){'obj1.should=~obj2'}
        let(:contents_after){'expect(obj1).to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not =~ obj2" do
        let(:contents_before){'obj1.should_not =~ obj2'}
        let(:contents_after){'expect(obj1).not_to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not=~obj2" do
        let(:contents_before){'obj1.should_not=~obj2'}
        let(:contents_after){'expect(obj1).not_to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with match" do
      context "obj1.should match(obj2)" do
        let(:contents_before){'obj1.should match(obj2)'}
        let(:contents_after){'expect(obj1).to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not match(obj2)" do
        let(:contents_before){'obj1.should_not match(obj2)'}
        let(:contents_after){'expect(obj1).not_to match(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with eq(nil)" do
      let(:contents_before){'expect(obj1).to eq(nil)'}
      let(:contents_after){'expect(obj1).to be_nil'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "expectations with eql(nil)" do
      let(:contents_before){'expect(obj1).to eql(nil)'}
      let(:contents_after){'expect(obj1).to be_nil'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "expectations with equal(nil)" do
      let(:contents_before){'expect(obj1).to equal(nil)'}
      let(:contents_after){'expect(obj1).to be_nil'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "expectations with should_receive" do
      context "obj1.should_receive(:method1)" do
        let(:contents_before){'obj1.should_receive(:method1)'}
        let(:contents_after){'expect(obj1).to receive(:method1)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_receive(:method1).and_return(obj2)" do
        let(:contents_before){'obj1.should_receive(:method1).and_return(obj2)'}
        let(:contents_after){'expect(obj1).to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_receive(:method1).with(obj2).and_return(obj3)" do
        let(:contents_before){'obj1.should_receive(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'expect(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "expectations with should_not_receive" do
      context "obj1.should_not_receive(:method1)" do
        let(:contents_before){'obj1.should_not_receive(:method1)'}
        let(:contents_after){'expect(obj1).not_to receive(:method1)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not_receive(:method1).and_return(obj2)" do
        let(:contents_before){'obj1.should_not_receive(:method1).and_return(obj2)'}
        let(:contents_after){'expect(obj1).not_to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.should_not_receive(:method1).with(obj2).and_return(obj3)" do
        let(:contents_before){'obj1.should_not_receive(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'expect(obj1).not_to receive(:method1).with(obj2).and_return(obj3)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "stub's" do
      context "obj1.stub(:method1)" do
        let(:contents_before){'obj1.stub(:method1)'}
        let(:contents_after){'allow(obj1).to receive(:method1)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.stub(:method1).and_return(obj2)" do
        let(:contents_before){'obj1.stub(:method1).and_return(obj2)'}
        let(:contents_after){'allow(obj1).to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.stub(:method1).with(obj2).and_return(obj3)" do
        let(:contents_before){'obj1.stub(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'allow(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.stub(method1: obj2)" do
        let(:contents_before){'obj1.stub(method1: obj2)'}
        let(:contents_after){'allow(obj1).to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "any_instance's" do
      context "obj1.any_instance.stub(:method1)" do
        let(:contents_before){'obj1.any_instance.stub(:method1)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.any_instance.stub(:method1).and_return(obj2)" do
        let(:contents_before){'obj1.any_instance.stub(:method1).and_return(obj2)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.any_instance.stub(:method1).with(obj2)and_return(obj3)" do
        let(:contents_before){'obj1.any_instance.stub(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'allow_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "any instance should receive's" do
      context "obj1.any_instance.should_receive(:method1)" do
        let(:contents_before){'obj1.any_instance.should_receive(:method1)'}
        let(:contents_after){'expect_any_instance_of(obj1).to receive(:method1)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.any_instance.should_receive(:method1).and_return(obj2)" do
        let(:contents_before){'obj1.any_instance.should_receive(:method1).and_return(obj2)'}
        let(:contents_after){'expect_any_instance_of(obj1).to receive(:method1).and_return(obj2)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end

      context "obj1.any_instance.should_receive(:method1).with(obj2)and_return(obj3)" do
        let(:contents_before){'obj1.any_instance.should_receive(:method1).with(obj2).and_return(obj3)'}
        let(:contents_after){'expect_any_instance_of(obj1).to receive(:method1).with(obj2).and_return(obj3)'}

        it "transforms correctly" do
          RspecFile.new(rspec_filename).transform
          new_contents = File.read(rspec_filename)
          expect(new_contents).to eq(contents_after)
        end
      end
    end

    context "it should have's" do
      let(:contents_before){'it "should have some property" do'}
      let(:contents_after){'it "has some property" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "it should not have's" do
      let(:contents_before){'it "should not have some property" do'}
      let(:contents_after){'it "does not have some property" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "it should verb's" do
      let(:contents_before){'it "should verb with something" do'}
      let(:contents_after){'it "verbs with something" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "it should not's" do
      let(:contents_before){'it "should not verb with something" do'}
      let(:contents_after){'it "does not verb with something" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "it should notify's" do
      let(:contents_before){'it "should notify something" do'}
      let(:contents_after){'it "notifies something" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    context "it should not notify's" do
      let(:contents_before){'it "should not notify something" do'}
      let(:contents_after){'it "does not notify something" do'}

      it "transforms correctly" do
        RspecFile.new(rspec_filename).transform
        new_contents = File.read(rspec_filename)
        expect(new_contents).to eq(contents_after)
      end
    end

    after do
      FileUtils.rm_f(rspec_filename)
    end

  end
end
