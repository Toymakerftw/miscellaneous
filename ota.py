import os.path, json, re, glob

def getSize(filename):
    st = os.stat(filename)
    return st.st_size

# constants
zip_path = '/home/android/syberia/out/target/product/oneplus6/'
device_brand = 'OnePlus'
device_model = 'OnePlus 6'
changelog = "changelog.txt"
developer = 'DennySPb'
website_url = r'http://syberiaos.com'
news_url = r'http://github.com/syberia-project'
url= r'https://sourceforge.net/projects/syberiaos/files/enchilada/'
error = 'false'
developer_url = r'http://github.com/syberia-project'
donate_url = r'https://syberiaos.com/links'
forum_url = r''

def getZip(folder):
    files_path = os.path.join(folder, '*.zip')
    return max(glob.iglob(files_path))

ota_data = {}

# generate addons nested dict
addons = {'addons':[]}
tmp_addons1 = {}
tmp_addons2 = {}
tmp_addons1['title'] = 'Magisk'
tmp_addons1['summary'] = 'Magisk'
tmp_addons1['url'] = r'"http://tiny.cc/latestmagisk'
tmp_addons2['title'] = 'Magisk'
tmp_addons2['summary'] = 'Magisk Uninstaller'
tmp_addons2['url'] = r'http://tiny.cc/latestuninstaller'
addons.get ('addons').append(tmp_addons1)
addons.get ('addons').append(tmp_addons2)

# read some data from files
filename = getZip(zip_path)
fn = os.path.split(filename)[1]
md5file = zip_path + fn + ".md5sum"
raw_changelog = open(changelog,'r', encoding='cp866').read()
raw_md5 = open(md5file,'r', encoding='cp866').readline()
build_date = re.search(r"\b\d{8}\b", fn).group(0)
device = re.search(r"syberia_([^-]*)",fn).group(1)
md5 = raw_md5.rsplit(None, 1)[0]
# fill json struct

ota_data=addons
ota_data['filename'] = fn
ota_data['changelog'] = raw_changelog
ota_data['filesize'] = str(getSize(filename))
ota_data['md5'] = md5;
ota_data['build_date'] = build_date
ota_data['device'] = device
ota_data['url'] = url + fn + "/download"
ota_data['donate_url'] = donate_url
ota_data['developer_url'] = developer_url
ota_data['news_url'] = news_url
ota_data['developer'] = developer
ota_data['error'] = error
ota_data['website_url'] = website_url
ota_data['forum_url'] = forum_url
ota_data['device_brand'] = device_brand
ota_data['device_model'] = device_model
print('Writting json data to ' + device+'.json')
with open(device+'.json', 'w') as f:
  json.dump(ota_data, f, indent=2)