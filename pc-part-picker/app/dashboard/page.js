// import pool from '../../../lib/db';
import AccessoryCard from '../components/accessory';

const components = ['case-accessory', 'case-fan', 'case', 'cpu-cooler',
'cpu', 'external-hard-drive', 'fan-controller', 'headphones',
 'internal-hard-drive', 'keyboard', 'memory', 'monitor',
  'motherboard', 'mouse', 'os', 'power-supply', 'sound-card',
   'speaker', 'thermal-paste', 'ups', 'video-card', 'webcam',
    'wired-network-card', 'wireless-network-card']


const componentCardMap = {
    'case-accessory': { name: 'Case Accessory', description: 'Description for Case Accessory', path: '/case-accessory' },
    'case-fan': { name: 'Case Fan', description: 'Description for Case Fan', path: '/case-fan' },
    'case': { name: 'Computer Case', description: 'Description for Computer Case', path: '/case' },
    'cpu-cooler': { name: 'CPU Cooler', description: 'Description for CPU Cooler', path: '/cpu-cooler' },
    'cpu': { name: 'CPU', description: 'Description for CPU', path: '/cpu' },
    'external-hard-drive': { name: 'External Hard Drive', description: 'Description for External Hard Drive', path: '/external-hard-drive' },
    'fan-controller': { name: 'Fan Controller', description: 'Description for Fan Controller', path: '/fan-controller' },
    'headphones': { name: 'Headphones', description: 'Description for Headphones', path: '/headphones' },
    'internal-hard-drive': { name: 'Internal Hard Drive', description: 'Description for Internal Hard Drive', path: '/internal-hard-drive' },
    'keyboard': { name: 'Keyboard', description: 'Description for Keyboard', path: '/keyboard' },
    'memory': { name: 'Memory', description: 'Description for Memory', path: '/memory' },
    'monitor': { name: 'Monitor', description: 'Description for Monitor', path: '/monitor' },
    'motherboard': { name: 'Motherboard', description: 'Description for Motherboard', path: '/motherboard' },
    'mouse': { name: 'Mouse', description: 'Description for Mouse', path: '/mouse' },
    'os': { name: 'Operating System', description: 'Description for Operating System', path: '/os' },
    'power-supply': { name: 'Power Supply', description: 'Description for Power Supply', path: '/power-supply' },
    'sound-card': { name: 'Sound Card', description: 'Description for Sound Card', path: '/sound-card' },
    'speaker': { name: 'Speaker', description: 'Description for Speaker', path: '/speaker' },
    'thermal-paste': { name: 'Thermal Paste', description: 'Description for Thermal Paste', path: '/thermal-paste' },
    'ups': { name: 'UPS', description: 'Description for UPS', path: '/ups' },
    'video-card': { name: 'Video Card', description: 'Description for Video Card', path: '/video-card' },
    'webcam': { name: 'Webcam', description: 'Description for Webcam', path: '/webcam' },
    'wired-network-card': { name: 'Wired Network Card', description: 'Description for Wired Network Card', path: '/wired-network-card' },
    'wireless-network-card': { name: 'Wireless Network Card', description: 'Description for Wireless Network Card', path: '/wireless-network-card' },
  };

export default function Dashboard(){

    const components = ['case-accessory', 'case-fan', 'case', 'cpu-cooler',
     'cpu', 'external-hard-drive', 'fan-controller', 'headphones',
      'internal-hard-drive', 'keyboard', 'memory', 'monitor',
       'motherboard', 'mouse', 'os', 'power-supply', 'sound-card',
        'speaker', 'thermal-paste', 'ups', 'video-card', 'webcam',
         'wired-network-card', 'wireless-network-card']


         return (
            <div className="flex flex-wrap justify-center">
              {components.map((component, index) => (
                <AccessoryCard key={index} {...componentCardMap[component]} />
              ))}
            </div>
          );
}