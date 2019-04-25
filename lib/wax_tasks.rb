# frozen_string_literal: true

# rubygems
require 'rubygems'

# stdlib
require 'csv'
require 'fileutils'
require 'json'
require 'pathname'
require 'yaml'

# 3rd party
require 'html-proofer'
require 'mini_magick'
require 'wax_iiif'

# relative
require_relative 'wax_tasks/collection'
require_relative 'wax_tasks/site'
require_relative 'wax_tasks/error'
require_relative 'wax_tasks/utils'

module WaxTasks

  # @return [String] The path to load Jekyll site config
  DEFAULT_CONFIG          = '_config.yml'

  # @return [String] The path to the compiled Jekyll site
  SITE_DIR                = '_site'

  def self.generate_pages(site, collection_name)
    collection  = Collection.new(site, collection_name)
    collection.generate_pages
  end

  def self.generate_search_index(site, generate_ui = false)
    puts 'here!'
    puts generate_ui
  end

  # def self.derivatives_simple(site, collection_name)
  #
  # end
  #
  # def self.derivatives_iiif(site, collection_name)
  #
  # end
end
